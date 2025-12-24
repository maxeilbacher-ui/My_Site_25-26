// Function to shuffle an array
function shuffleArray(array) {
	const shuffled = [...array]
	for (let i = shuffled.length - 1; i > 0; i--) {
		const j = Math.floor(Math.random() * (i + 1))
		const temp = shuffled[i]
		shuffled[i] = shuffled[j]
		shuffled[j] = temp
	}
	return shuffled
}

// Function to get and shuffle image paths for any category
function getShuffledImagePaths(images, category) {
	const imagePaths = images[category].map(path => `/images/${path}`)
	return shuffleArray(imagePaths)
}

export function useImageShuffle() {
	return {
		shuffleArray,
		getShuffledImagePaths
	}
} 