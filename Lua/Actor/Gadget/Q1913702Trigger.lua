require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1913702Trigger = class("Q1913702Trigger", GadgetActorProxy)
Q1913702Trigger.defaultAlias = "Q1913702Trigger"
local Q19137ClientConfig = require("Quest/Client/Q19137ClientConfig")

local subIDs = Q19137ClientConfig.SubIDs
local npcs = Q19137ClientConfig.Npcs
local datas = Q19137ClientConfig.Datas

function Q1913702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1913702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1913702Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19137"):ShowBlackScreen(0.4, 1.5, 0.4, function(arg1)
        local actor = actorMgr:GetActor("19137")
        actor:CreateQuestNpcById(1913702, npcs.Coop_NingguangData.id, 1)
        actor:RequestInteraction(npcs.Coop_NingguangData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q1913702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1913702Trigger
