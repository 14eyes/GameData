require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223913Trigger = class("Q7223913Trigger", GadgetActorProxy)
Q7223913Trigger.defaultAlias = "Q7223913Trigger"
local Q72239ClientConfig = require("Quest/Client/Q72239ClientConfig")

local subIDs = Q72239ClientConfig.SubIDs
local npcs = Q72239ClientConfig.Npcs
local datas = Q72239ClientConfig.Datas

function Q7223913Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223913Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7.319582, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223913Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72239")
    actor:PlayCutsceneIndex("7223901", nil, nil, nil, false)
    actor:CallDelay(6, function(arg1)
        actorMgr:GetActor("72239"):FinishQuestID(false, 7223913)
        print("Trigger In 7223913 Complete!")
    end)

    self:DestroySelf()
end

function Q7223913Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223913Trigger
