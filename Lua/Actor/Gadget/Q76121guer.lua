require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76121guer = class("Q76121guer", GadgetActorProxy)
Q76121guer.defaultAlias = "Q76121guer"
local Q76121ClientConfig = require("Quest/Client/Q76121ClientConfig")

local this
local subIDs = Q76121ClientConfig.SubIDs
local datas = Q76121ClientConfig.Datas
local npcs = Q76121ClientConfig.Npcs
local points = Q76121ClientConfig.Points

function Q76121guer:OnPostDataPrepare()
    print("Q76121guer - OnPostDataPrepare")
    this = self
end

function Q76121guer:OnPostComponentPrepare()
    print("Q76121guer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76121)
end

function Q76121guer:TriggerIn()
    print("Q76121guer - TriggerIn")
end

function Q76121guer:PreTriggerIn()
    print("Q76121guer - PreTriggerIn")
end

function Q76121guer:LightUpTriggerIn()
    print("Q76121guer - LightUpTriggerIn")
end

function Q76121guer:TriggerOut()
    print("Q76121guer - TriggerOut")
    actorMgr:GetActor("76121"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76121guer
