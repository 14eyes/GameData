require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1913603Trigger = class("Q1913603Trigger", GadgetActorProxy)
Q1913603Trigger.defaultAlias = "Q1913603Trigger"
local Q19136ClientConfig = require("Quest/Client/Q19136ClientConfig")

local subIDs = Q19136ClientConfig.SubIDs
local npcs = Q19136ClientConfig.Npcs
local datas = Q19136ClientConfig.Datas

function Q1913603Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1913603Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1913603Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19136"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19136")
        actor:CreateQuestNpcById(1913603, npcs.Coop_NingguangData.id, 1)
        actor:RequestInteraction(npcs.Coop_NingguangData.alias)
    end, nil, nil, "", false, true)
end

function Q1913603Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1913603Trigger
