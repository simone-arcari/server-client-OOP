#pragma once

class HostInterface {
public:
    virtual bool setup() = 0;
    virtual void run() = 0;
};

