if [ -z "${ANSIBLE_VAULT_PASSWORD+x}" ]; then
    IFS= read -r -s -p "Please enter you Ansible Vault password: " ANSIBLE_VAULT_PASSWORD
    export ANSIBLE_VAULT_PASSWORD
    echo
else
    echo "Not prompting for Ansible Vault password again."
fi
