require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601625Trigger = class("Q7601625Trigger", GadgetActorProxy)
Q7601625Trigger.defaultAlias = "Q7601625Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601625Trigger:OnPostDataPrepare()
    print("Q7601625Trigger - OnPostDataPrepare")
    this = self
end

function Q7601625Trigger:OnPostComponentPrepare()
    print("Q7601625Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601625Trigger:TriggerIn()
    print("Q7601625Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601625)
    this:DestroySelf()
end

function Q7601625Trigger:PreTriggerIn()
    print("Q7601625Trigger - PreTriggerIn")
end

function Q7601625Trigger:LightUpTriggerIn()
    print("Q7601625Trigger - LightUpTriggerIn")
end

function Q7601625Trigger:TriggerOut()
    print("Q7601625Trigger - TriggerOut")
end

return Q7601625Trigger
