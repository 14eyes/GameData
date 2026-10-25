require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q771432102 = class("Q771432102", GadgetActorProxy)
Q771432102.defaultAlias = "Q771432102"
local Q77143ClientConfig = require("Quest/Client/Q77143ClientConfig")

local this
local subIDs = Q77143ClientConfig.SubIDs
local npcs = Q77143ClientConfig.Npcs
local points = Q77143ClientConfig.Points

function Q771432102:OnPostDataPrepare()
    print("Q771432102 - OnPostDataPrepare")
    this = self
end

function Q771432102:OnPostComponentPrepare()
    print("Q771432102 - OnPostComponentPrepare")
    this:AddComponentTrigger(130, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77143)
end

function Q771432102:TriggerIn()
    print("Q771432102 - TriggerIn")
end

function Q771432102:PreTriggerIn()
    print("Q771432102 - PreTriggerIn")
end

function Q771432102:LightUpTriggerIn()
    print("Q771432102 - LightUpTriggerIn")
end

function Q771432102:TriggerOut()
    print("Q771432102 - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7714321})
    this:DestroySelf()
end

return Q771432102
