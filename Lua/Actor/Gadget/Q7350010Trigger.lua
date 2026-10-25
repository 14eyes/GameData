require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350010Trigger = class("Q7350010Trigger", GadgetActorProxy)
Q7350010Trigger.defaultAlias = "Q7350010Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350010Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350010Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350010Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73500"):AfterMainPageActiveSafeCall(function(arg1)
        local actor = actorMgr:GetActor("73500")
        actor:CreateQuestNpcById(7350010, npcs.PaimonData.id, 2)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end)

    self:DestroySelf()
end

function Q7350010Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350010Trigger
