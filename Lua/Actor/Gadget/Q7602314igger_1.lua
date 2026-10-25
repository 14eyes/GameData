require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602314igger_1 = class("Q7602314igger_1", GadgetActorProxy)
Q7602314igger_1.defaultAlias = "Q7602314igger_1"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602314igger_1:OnPostDataPrepare()
    print("Q7602314igger_1 - OnPostDataPrepare")
    this = self
end

function Q7602314igger_1:OnPostComponentPrepare()
    print("Q7602314igger_1 - OnPostComponentPrepare")
end

function Q7602314igger_1:TriggerIn()
    print("Q7602314igger_1 - TriggerIn")
    actorMgr:GetActor("76023"):QuestNarratorTask(datas.NarratorWithId_7602305, nil)
    this:DestroySelf()
end

function Q7602314igger_1:PreTriggerIn()
    print("Q7602314igger_1 - PreTriggerIn")
end

function Q7602314igger_1:LightUpTriggerIn()
    print("Q7602314igger_1 - LightUpTriggerIn")
end

function Q7602314igger_1:TriggerOut()
    print("Q7602314igger_1 - TriggerOut")
end

return Q7602314igger_1
