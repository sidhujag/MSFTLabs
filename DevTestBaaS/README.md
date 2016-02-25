#   Adding Blockchain Artifact Library to Azure DevTest Labs

To add the Blockchain as a Service Artifact Library to your Azure DevTest lab is easy.  Follow these simple steps:

1. Sign into the Azure portal: [http://portal.azure.com](http://portal.azure.com)

2. Locate DevTest labs.  You may need to Browse> for it in the Azure portal left hand Nav

3. Create a new DevTest lab or edit the settings of an existing lab

4. In the DevTest Lab settings Add a new Artifact Repository

![](https://raw.githubusercontent.com/marleyg/MSFTLabs/master/DevTestBaaS/assets/repoadd.png)

5. Name your repository.
6. The Git Clone URI is: `https://github.com/marleyg/MSFTLabs.git`
7. The Folder Path is: `DevTestBaaS`
8. The Branch can be blank or `master`
9. The Personal Access Token is: `92497260241aae75c26064879ee623f7bd349438`

![](https://raw.githubusercontent.com/marleyg/MSFTLabs/master/DevTestBaaS/assets/ArtifactRepo.png)

10. Now when you can add the BaaS artifacts to your VMs on creation or by Right Clicking and existing VM and select Apply Artifact

 ![](https://raw.githubusercontent.com/marleyg/MSFTLabs/master/DevTestBaaS/assets/artifactsPublic.png)