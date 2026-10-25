require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13027TriggerDust1 = class("Q13027TriggerDust1", GadgetActorProxy)
Q13027TriggerDust1.defaultAlias = "Q13027TriggerDust1"
local Q13027ClientConfig = require("Quest/Client/Q13027ClientConfig")

local this
local subIDs = Q13027ClientConfig.SubIDs
local npcs = Q13027ClientConfig.Npcs
local points = Q13027ClientConfig.Points
local datas = Q13027ClientConfig.Datas

function Q13027TriggerDust1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13027TriggerDust1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13027TriggerDust1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("13027")
    actor:CreateQuestNpc(quest, npcs.Npc1056Data.id, 0)
    actor:RequestInteraction(npcs.Npc1056Data.alias)
    this:DestroySelf()
end

function Q13027TriggerDust1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13027TriggerDust1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13027TriggerDust1:TriggerOut()
    print("TriggerOut")
end

return Q13027TriggerDust1
