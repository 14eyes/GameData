require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602315igger = class("Q7602315igger", GadgetActorProxy)
Q7602315igger.defaultAlias = "Q7602315igger"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602315igger:OnPostDataPrepare()
    print("Q7602315igger - OnPostDataPrepare")
    this = self
end

function Q7602315igger:OnPostComponentPrepare()
    print("Q7602315igger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602315igger:TriggerIn()
    print("Q7602315igger - TriggerIn")
    actorMgr:GetActor("76023"):GetQuestNpcActor(npcs.Npc21945.alias, 76023):TurnToAvatar()
    actorMgr:GetActor("76023"):QuestNarratorTask(datas.NarratorWithId_7602309, nil)
    this:DestroySelf()
end

function Q7602315igger:PreTriggerIn()
    print("Q7602315igger - PreTriggerIn")
end

function Q7602315igger:LightUpTriggerIn()
    print("Q7602315igger - LightUpTriggerIn")
end

function Q7602315igger:TriggerOut()
    print("Q7602315igger - TriggerOut")
end

return Q7602315igger
