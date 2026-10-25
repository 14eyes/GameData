require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007815Trigger = class("Q4007815Trigger", GadgetActorProxy)
Q4007815Trigger.defaultAlias = "Q4007815Trigger"
local Q40078ClientConfig = require("Quest/Client/Q40078ClientConfig")

local subIDs = Q40078ClientConfig.SubIDs
local npcs = Q40078ClientConfig.Npcs
local gadgets = Q40078ClientConfig.Gadgets
local datas = Q40078ClientConfig.Datas

function Q4007815Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007815Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(28.14211, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007815Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40078"):AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 4007815)
    end)

    self:DestroySelf()
end

function Q4007815Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007815Trigger
