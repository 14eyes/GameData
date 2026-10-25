require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022309Trigger = class("Q4022309Trigger", GadgetActorProxy)
Q4022309Trigger.defaultAlias = "Q4022309Trigger"
local Q40223ClientConfig = require("Quest/Client/Q40223ClientConfig")

local this
local subIDs = Q40223ClientConfig.SubIDs
local datas = Q40223ClientConfig.Datas
local npcs = Q40223ClientConfig.Npcs
local points = Q40223ClientConfig.Points

function Q4022309Trigger:OnPostDataPrepare()
    print("Q4022309Trigger - OnPostDataPrepare")
    this = self
end

function Q4022309Trigger:OnPostComponentPrepare()
    print("Q4022309Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40223)
end

function Q4022309Trigger:TriggerIn()
    print("Q4022309Trigger - TriggerIn")
    actorMgr:GetActor("40223"):LevelLoadFinishSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 4022309)
        this:DestroySelf()
    end)
end

function Q4022309Trigger:PreTriggerIn()
    print("Q4022309Trigger - PreTriggerIn")
end

function Q4022309Trigger:LightUpTriggerIn()
    print("Q4022309Trigger - LightUpTriggerIn")
end

function Q4022309Trigger:TriggerOut()
    print("Q4022309Trigger - TriggerOut")
end

return Q4022309Trigger
