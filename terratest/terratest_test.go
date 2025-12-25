package RG_VNET_TEST

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraform(t *testing.T) {
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../env/dev",
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output1 := terraform.Output(t, terraformOptions, "rg_test")
	assert.Equal(t, "RG_Module test has Completed, using Terratest", output1)

	output2 := terraform.Output(t, terraformOptions, "vnet_test")
	assert.Equal(t, "VNET_Module testing Completed", output2)
}
