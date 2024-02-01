// BotGG.js

const axios = require('axios');

function updateFile() {
    // Extracted key from user input
    const userEnteredKey = "lvZhnDrq6XwFc3pQeLEX1PWmfKVmL5u1";

    // Your GitHub repository information
    const repoOwner = "EnJirad";
    const repoName = "Loding_Script";
    const filePath = "Gen_Key.txt";

    // Your personal access token
    const accessToken = "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";

    // Formulate the API URL for updating the file
    const apiUrl = `https://api.github.com/repos/${repoOwner}/${repoName}/contents/${filePath}`;

    // Fetch the current content of the file
    axios.get(apiUrl, {
        headers: {
            Authorization: `Bearer ${accessToken}`
        }
    })
    .then(response => {
        const fileContent = Buffer.from(response.data.content, 'base64').toString('utf-8');
    
        // Modify the content
        const updatedContent = fileContent.replace(
            new RegExp(`Key: ${userEnteredKey}\\n(.*\\n)\\n}`),
            `Key: ${userEnteredKey}\\nS_date: ${new Date().toLocaleDateString()}\\nS_Time: ${new Date().toLocaleTimeString()}\\nE_date: 14/02/2025\\n}`
        );
    
        // Formulate the payload for updating the file
        const payload = {
            message: "Update user information",
            content: Buffer.from(updatedContent).toString('base64'),
            sha: response.data.sha
        };
    
        // Formulate the API URL for committing the changes
        const commitUrl = `https://api.github.com/repos/${repoOwner}/${repoName}/contents/${filePath}`;
    
        // Commit the changes
        axios.put(commitUrl, payload, {
            headers: {
                Authorization: `Bearer ${accessToken}`
            }
        })
        .then(() => console.log("File updated successfully"))
        .catch(error => console.error("Error committing changes:", error));
    })
    .catch(error => console.error("Error fetching file from GitHub:", error));
}

// Call the main function
updateFile();
