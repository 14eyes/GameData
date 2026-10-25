require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76084DeleteGuer = class("Q76084DeleteGuer", GadgetActorProxy)
Q76084DeleteGuer.defaultAlias = "Q76084DeleteGuer"
local Q76084ClientConfig = require("Quest/Client/Q76084ClientConfig")

local this
local subIDs = Q76084ClientConfig.SubIDs
local datas = Q76084ClientConfig.Datas
local npcs = Q76084ClientConfig.Npcs
local points = Q76084ClientConfig.Points

function Q76084DeleteGuer:OnPostDataPrepare()
    print("Q76084DeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76084DeleteGuer:OnPostComponentPrepare()
    print("Q76084DeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76084)
end

function Q76084DeleteGuer:TriggerIn()
    print("Q76084DeleteGuer - TriggerIn")
end

function Q76084DeleteGuer:PreTriggerIn()
    print("Q76084DeleteGuer - PreTriggerIn")
end

function Q76084DeleteGuer:LightUpTriggerIn()
    print("Q76084DeleteGuer - LightUpTriggerIn")
end

function Q76084DeleteGuer:TriggerOut()
    print("Q76084DeleteGuer - TriggerOut")
    actorMgr:GetActor("76084"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76084DeleteGuer
