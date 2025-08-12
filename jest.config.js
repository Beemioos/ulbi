module.exports = {
	preset: 'ts-jest',
	testEnvironment: 'jsdom',
	testMatch: ['<rootDir>/src/__tests__/**/*.(test|spec).ts?(x)'],
	setupFilesAfterEnv: ['@testing-library/jest-dom'],
}
