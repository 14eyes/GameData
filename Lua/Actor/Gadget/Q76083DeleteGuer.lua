require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76083DeleteGuer = class("Q76083DeleteGuer", GadgetActorProxy)
Q76083DeleteGuer.defaultAlias = "Q76083DeleteGuer"
local Q76083ClientConfig = require("Quest/Client/Q76083ClientConfig")

local this
local subIDs = Q76083ClientConfig.SubIDs
local datas = Q76083ClientConfig.Datas
local npcs = Q76083ClientConfig.Npcs
local points = Q76083ClientConfig.Points

function Q76083DeleteGuer:OnPostDataPrepare()
    print("Q76083DeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76083DeleteGuer:OnPostComponentPrepare()
    print("Q76083DeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76083)
end

function Q76083DeleteGuer:TriggerIn()
    print("Q76083DeleteGuer - TriggerIn")
end

function Q76083DeleteGuer:PreTriggerIn()
    print("Q76083DeleteGuer - PreTriggerIn")
end

function Q76083DeleteGuer:LightUpTriggerIn()
    print("Q76083DeleteGuer - LightUpTriggerIn")
end

function Q76083DeleteGuer:TriggerOut()
    print("Q76083DeleteGuer - TriggerOut")
    actorMgr:GetActor("76083"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76083DeleteGuer
