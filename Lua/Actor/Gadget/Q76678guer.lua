require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76678guer = class("Q76678guer", GadgetActorProxy)
Q76678guer.defaultAlias = "Q76678guer"
local Q76678ClientConfig = require("Quest/Client/Q76678ClientConfig")

local this
local subIDs = Q76678ClientConfig.SubIDs
local datas = Q76678ClientConfig.Datas
local npcs = Q76678ClientConfig.Npcs
local points = Q76678ClientConfig.Points

function Q76678guer:OnPostDataPrepare()
    print("Q76678guer - OnPostDataPrepare")
    this = self
end

function Q76678guer:OnPostComponentPrepare()
    print("Q76678guer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76678)
end

function Q76678guer:TriggerIn()
    print("Q76678guer - TriggerIn")
end

function Q76678guer:PreTriggerIn()
    print("Q76678guer - PreTriggerIn")
end

function Q76678guer:LightUpTriggerIn()
    print("Q76678guer - LightUpTriggerIn")
end

function Q76678guer:TriggerOut()
    print("Q76678guer - TriggerOut")
    actorMgr:GetActor("76678"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76678guer
