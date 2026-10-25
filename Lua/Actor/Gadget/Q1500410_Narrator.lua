require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500410_Narrator = class("Q1500410_Narrator", GadgetActorProxy)
Q1500410_Narrator.defaultAlias = "Q1500410_Narrator"
local Q15004ClientConfig = require("Quest/Client/Q15004ClientConfig")

local this
local subIDs = Q15004ClientConfig.SubIDs
local datas = Q15004ClientConfig.Datas
local npcs = Q15004ClientConfig.Npcs
local points = Q15004ClientConfig.Points

function Q1500410_Narrator:OnPostDataPrepare()
    print("Q1500410_Narrator - OnPostDataPrepare")
    this = self
end

function Q1500410_Narrator:OnPostComponentPrepare()
    print("Q1500410_Narrator - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15004)
end

function Q1500410_Narrator:TriggerIn()
    print("Q1500410_Narrator - TriggerIn")
    actorMgr:GetActor("15004"):QuestNarratorTask(datas.NarratorWithId_1500496, nil)
    this:DestroySelf()
end

function Q1500410_Narrator:PreTriggerIn()
    print("Q1500410_Narrator - PreTriggerIn")
end

function Q1500410_Narrator:LightUpTriggerIn()
    print("Q1500410_Narrator - LightUpTriggerIn")
end

function Q1500410_Narrator:TriggerOut()
    print("Q1500410_Narrator - TriggerOut")
end

return Q1500410_Narrator
