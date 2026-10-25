require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76122guer = class("Q76122guer", GadgetActorProxy)
Q76122guer.defaultAlias = "Q76122guer"
local Q76122ClientConfig = require("Quest/Client/Q76122ClientConfig")

local this
local subIDs = Q76122ClientConfig.SubIDs
local datas = Q76122ClientConfig.Datas
local npcs = Q76122ClientConfig.Npcs
local points = Q76122ClientConfig.Points

function Q76122guer:OnPostDataPrepare()
    print("Q76122guer - OnPostDataPrepare")
    this = self
end

function Q76122guer:OnPostComponentPrepare()
    print("Q76122guer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76122)
end

function Q76122guer:TriggerIn()
    print("Q76122guer - TriggerIn")
end

function Q76122guer:PreTriggerIn()
    print("Q76122guer - PreTriggerIn")
end

function Q76122guer:LightUpTriggerIn()
    print("Q76122guer - LightUpTriggerIn")
end

function Q76122guer:TriggerOut()
    print("Q76122guer - TriggerOut")
    actorMgr:GetActor("76122"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    actorMgr:GetActor("76122"):DestroyQuestNpcActor(npcs.Npc15380.alias, 3)
    this:DestroySelf()
end

return Q76122guer
