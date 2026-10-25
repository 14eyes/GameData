require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201207PreTrigger = class("Q201207PreTrigger", GadgetActorProxy)
Q201207PreTrigger.defaultAlias = "Q201207PreTrigger"
local Q2012ClientConfig = require("Quest/Client/Q2012ClientConfig")

local mainID = Q2012ClientConfig.MainID
local actorAlias = Q2012ClientConfig.ActorAlias
local subIDs = Q2012ClientConfig.SubIDs
local npcs = Q2012ClientConfig.Npcs
local gadgets = Q2012ClientConfig.Gadgets
local datas = Q2012ClientConfig.Datas

function Q201207PreTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201207PreTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201207PreTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor.ShowBlackScreen(actor, 0.2, 2, 0.5, function()
        actor:CreateQuestNpcById(201212, npcs.Npc12043Data.id, 0)
        actor:RequestInteraction("Npc12043")
    end, nil, nil)

    self:DestroySelf()
end

function Q201207PreTrigger:TriggerOut()
    print("TriggerOut")
end

return Q201207PreTrigger
