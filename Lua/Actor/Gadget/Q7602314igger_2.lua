require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602314igger_2 = class("Q7602314igger_2", GadgetActorProxy)
Q7602314igger_2.defaultAlias = "Q7602314igger_2"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602314igger_2:OnPostDataPrepare()
    print("Q7602314igger_2 - OnPostDataPrepare")
    this = self
end

function Q7602314igger_2:OnPostComponentPrepare()
    print("Q7602314igger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602314igger_2:TriggerIn()
    print("Q7602314igger_2 - TriggerIn")
    actorMgr:GetActor("76023"):QuestNarratorTask(datas.NarratorWithId_7602306, nil)
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7602314)
end

function Q7602314igger_2:PreTriggerIn()
    print("Q7602314igger_2 - PreTriggerIn")
end

function Q7602314igger_2:LightUpTriggerIn()
    print("Q7602314igger_2 - LightUpTriggerIn")
end

function Q7602314igger_2:TriggerOut()
    print("Q7602314igger_2 - TriggerOut")
end

return Q7602314igger_2
