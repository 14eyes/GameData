require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76086DeleteGuer = class("Q76086DeleteGuer", GadgetActorProxy)
Q76086DeleteGuer.defaultAlias = "Q76086DeleteGuer"
local Q76086ClientConfig = require("Quest/Client/Q76086ClientConfig")

local this
local subIDs = Q76086ClientConfig.SubIDs
local datas = Q76086ClientConfig.Datas
local npcs = Q76086ClientConfig.Npcs
local points = Q76086ClientConfig.Points

function Q76086DeleteGuer:OnPostDataPrepare()
    print("Q76086DeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76086DeleteGuer:OnPostComponentPrepare()
    print("Q76086DeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76086)
end

function Q76086DeleteGuer:TriggerIn()
    print("Q76086DeleteGuer - TriggerIn")
end

function Q76086DeleteGuer:PreTriggerIn()
    print("Q76086DeleteGuer - PreTriggerIn")
end

function Q76086DeleteGuer:LightUpTriggerIn()
    print("Q76086DeleteGuer - LightUpTriggerIn")
end

function Q76086DeleteGuer:TriggerOut()
    print("Q76086DeleteGuer - TriggerOut")
    actorMgr:GetActor("76086"):DestroyQuestNpcActor(npcs.Npc1318_1.alias, 3)
    this:DestroySelf()
end

return Q76086DeleteGuer
