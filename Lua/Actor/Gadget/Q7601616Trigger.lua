require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601616Trigger = class("Q7601616Trigger", GadgetActorProxy)
Q7601616Trigger.defaultAlias = "Q7601616Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601616Trigger:OnPostDataPrepare()
    print("Q7601616Trigger - OnPostDataPrepare")
    this = self
end

function Q7601616Trigger:OnPostComponentPrepare()
    print("Q7601616Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601616Trigger:TriggerIn()
    print("Q7601616Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601631)
    this:DestroySelf()
end

function Q7601616Trigger:PreTriggerIn()
    print("Q7601616Trigger - PreTriggerIn")
end

function Q7601616Trigger:LightUpTriggerIn()
    print("Q7601616Trigger - LightUpTriggerIn")
end

function Q7601616Trigger:TriggerOut()
    print("Q7601616Trigger - TriggerOut")
end

return Q7601616Trigger
