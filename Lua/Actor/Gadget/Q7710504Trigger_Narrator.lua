require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710504Trigger_Narrator = class("Q7710504Trigger_Narrator", GadgetActorProxy)
Q7710504Trigger_Narrator.defaultAlias = "Q7710504Trigger_Narrator"
local Q77105ClientConfig = require("Quest/Client/Q77105ClientConfig")

local this
local subIDs = Q77105ClientConfig.SubIDs
local datas = Q77105ClientConfig.Datas
local npcs = Q77105ClientConfig.Npcs
local points = Q77105ClientConfig.Points

function Q7710504Trigger_Narrator:OnPostDataPrepare()
    print("Q7710504Trigger_Narrator - OnPostDataPrepare")
    this = self
end

function Q7710504Trigger_Narrator:OnPostComponentPrepare()
    print("Q7710504Trigger_Narrator - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77105)
end

function Q7710504Trigger_Narrator:TriggerIn()
    print("Q7710504Trigger_Narrator - TriggerIn")
    actorMgr:GetActor("77105"):QuestNarratorTask(datas.NarratorWithId_7710504, nil)
    this:DestroySelf()
end

function Q7710504Trigger_Narrator:PreTriggerIn()
    print("Q7710504Trigger_Narrator - PreTriggerIn")
end

function Q7710504Trigger_Narrator:LightUpTriggerIn()
    print("Q7710504Trigger_Narrator - LightUpTriggerIn")
end

function Q7710504Trigger_Narrator:TriggerOut()
    print("Q7710504Trigger_Narrator - TriggerOut")
end

return Q7710504Trigger_Narrator
