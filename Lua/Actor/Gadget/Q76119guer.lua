require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76119guer = class("Q76119guer", GadgetActorProxy)
Q76119guer.defaultAlias = "Q76119guer"
local Q76119ClientConfig = require("Quest/Client/Q76119ClientConfig")

local this
local subIDs = Q76119ClientConfig.SubIDs
local datas = Q76119ClientConfig.Datas
local npcs = Q76119ClientConfig.Npcs
local points = Q76119ClientConfig.Points

function Q76119guer:OnPostDataPrepare()
    print("Q76119guer - OnPostDataPrepare")
    this = self
end

function Q76119guer:OnPostComponentPrepare()
    print("Q76119guer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76119)
end

function Q76119guer:TriggerIn()
    print("Q76119guer - TriggerIn")
end

function Q76119guer:PreTriggerIn()
    print("Q76119guer - PreTriggerIn")
end

function Q76119guer:LightUpTriggerIn()
    print("Q76119guer - LightUpTriggerIn")
end

function Q76119guer:TriggerOut()
    print("Q76119guer - TriggerOut")
    actorMgr:GetActor("76119"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76119guer
