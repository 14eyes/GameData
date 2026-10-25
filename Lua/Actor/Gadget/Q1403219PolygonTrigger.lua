require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403219PolygonTrigger = class("Q1403219PolygonTrigger", GadgetActorProxy)
Q1403219PolygonTrigger.defaultAlias = "Q1403219PolygonTrigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403219PolygonTrigger:OnPostDataPrepare()
    print("Q1403219PolygonTrigger - OnPostDataPrepare")
    this = self
end

function Q1403219PolygonTrigger:OnPostComponentPrepare()
    print("Q1403219PolygonTrigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "MirrorWorld_PolygonRegion_TRPGGame1", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403219PolygonTrigger:TriggerIn()
    print("Q1403219PolygonTrigger - TriggerIn")
    actorMgr:GetActor("14032"):QuestNarratorTask(datas.NarratorWithId_1403209, nil)
end

function Q1403219PolygonTrigger:PreTriggerIn()
    print("Q1403219PolygonTrigger - PreTriggerIn")
end

function Q1403219PolygonTrigger:LightUpTriggerIn()
    print("Q1403219PolygonTrigger - LightUpTriggerIn")
end

function Q1403219PolygonTrigger:TriggerOut()
    print("Q1403219PolygonTrigger - TriggerOut")
end

return Q1403219PolygonTrigger
