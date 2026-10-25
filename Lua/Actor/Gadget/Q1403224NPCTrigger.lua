require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403224NPCTrigger = class("Q1403224NPCTrigger", GadgetActorProxy)
Q1403224NPCTrigger.defaultAlias = "Q1403224NPCTrigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403224NPCTrigger:OnPostDataPrepare()
    print("Q1403224NPCTrigger - OnPostDataPrepare")
    this = self
end

function Q1403224NPCTrigger:OnPostComponentPrepare()
    print("Q1403224NPCTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403224NPCTrigger:TriggerIn()
    print("Q1403224NPCTrigger - TriggerIn")
    actorMgr:GetActor("14032"):RequestInteraction(npcs.Npc14095.alias, "", true)
    this:DestroySelf()
end

function Q1403224NPCTrigger:PreTriggerIn()
    print("Q1403224NPCTrigger - PreTriggerIn")
end

function Q1403224NPCTrigger:LightUpTriggerIn()
    print("Q1403224NPCTrigger - LightUpTriggerIn")
end

function Q1403224NPCTrigger:TriggerOut()
    print("Q1403224NPCTrigger - TriggerOut")
end

return Q1403224NPCTrigger
