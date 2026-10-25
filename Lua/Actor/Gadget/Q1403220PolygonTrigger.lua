require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403220PolygonTrigger = class("Q1403220PolygonTrigger", GadgetActorProxy)
Q1403220PolygonTrigger.defaultAlias = "Q1403220PolygonTrigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403220PolygonTrigger:OnPostDataPrepare()
    print("Q1403220PolygonTrigger - OnPostDataPrepare")
    this = self
end

function Q1403220PolygonTrigger:OnPostComponentPrepare()
    print("Q1403220PolygonTrigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "MirrorWorld_PolygonRegion_TRPGGame2", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403220PolygonTrigger:TriggerIn()
    print("Q1403220PolygonTrigger - TriggerIn")
    actorMgr:GetActor("14032"):QuestNarratorTask(datas.NarratorWithId_1403209, nil)
end

function Q1403220PolygonTrigger:PreTriggerIn()
    print("Q1403220PolygonTrigger - PreTriggerIn")
end

function Q1403220PolygonTrigger:LightUpTriggerIn()
    print("Q1403220PolygonTrigger - LightUpTriggerIn")
end

function Q1403220PolygonTrigger:TriggerOut()
    print("Q1403220PolygonTrigger - TriggerOut")
end

return Q1403220PolygonTrigger
