require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701721Trigger = class("Q701721Trigger", GadgetActorProxy)
Q701721Trigger.defaultAlias = "Q701721Trigger"
local Q7017ClientConfig = require("Quest/Client/Q7017ClientConfig")

local this
local subIDs = Q7017ClientConfig.SubIDs
local datas = Q7017ClientConfig.Datas
local npcs = Q7017ClientConfig.Npcs
local points = Q7017ClientConfig.Points

function Q701721Trigger:OnPostDataPrepare()
    print("Q701721Trigger - OnPostDataPrepare")
    this = self
end

function Q701721Trigger:OnPostComponentPrepare()
    print("Q701721Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(36.97166, 8.470399, 21.24622, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7017)
end

function Q701721Trigger:TriggerIn()
    print("Q701721Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701721})
    this:DestroySelf()
end

function Q701721Trigger:PreTriggerIn()
    print("Q701721Trigger - PreTriggerIn")
end

function Q701721Trigger:LightUpTriggerIn()
    print("Q701721Trigger - LightUpTriggerIn")
end

function Q701721Trigger:TriggerOut()
    print("Q701721Trigger - TriggerOut")
end

return Q701721Trigger
