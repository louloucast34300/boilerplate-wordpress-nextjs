import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  webpack: (config) => {
    config.resolve.alias = {
      ...config.resolve.alias,
      "firebase-admin": false,
    };
    return config;
  },
};

export default nextConfig;
