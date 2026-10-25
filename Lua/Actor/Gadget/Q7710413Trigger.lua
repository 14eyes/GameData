require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710413Trigger = class("Q7710413Trigger", GadgetActorProxy)
Q7710413Trigger.defaultAlias = "Q7710413Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710413Trigger:OnPostDataPrepare()
    print("Q7710413Trigger - OnPostDataPrepare")
    this = self
end

function Q7710413Trigger:OnPostComponentPrepare()
    print("Q7710413Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(4, 6, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710413Trigger:TriggerIn()
    print("Q7710413Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710413})
    this:DestroySelf()
end

function Q7710413Trigger:PreTriggerIn()
    print("Q7710413Trigger - PreTriggerIn")
end

function Q7710413Trigger:LightUpTriggerIn()
    print("Q7710413Trigger - LightUpTriggerIn")
end

function Q7710413Trigger:TriggerOut()
    print("Q7710413Trigger - TriggerOut")
end

return Q7710413Trigger
