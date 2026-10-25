require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2016Trigger2 = class("Q2016Trigger2", GadgetActorProxy)
Q2016Trigger2.defaultAlias = "Q2016Trigger2"
local Q2016ClientConfig = require("Quest/Client/Q2016ClientConfig")

local subIDs = Q2016ClientConfig.SubIDs
local npcs = Q2016ClientConfig.Npcs

function Q2016Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2016Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2016Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2016"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("2016"):CreateQuestNpcById(201601, npcs.Npc1034Data.id, 0)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q2016Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q2016Trigger2
