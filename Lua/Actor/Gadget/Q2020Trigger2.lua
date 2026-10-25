require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2020Trigger2 = class("Q2020Trigger2", GadgetActorProxy)
Q2020Trigger2.defaultAlias = "Q2020Trigger2"
local Q2020ClientConfig = require("Quest/Client/Q2020ClientConfig")

local subIDs = Q2020ClientConfig.SubIDs
local npcs = Q2020ClientConfig.Npcs
local gadgets = Q2020ClientConfig.Gadgets
local datas = Q2020ClientConfig.Datas

function Q2020Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2020Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2020Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2020"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("2020")
        actor:CreateQuestNpcById(202012, npcs.PaimonData.id, 0)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q2020Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q2020Trigger2
