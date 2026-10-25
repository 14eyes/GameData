require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500401TriggerPosui = class("Q500401TriggerPosui", GadgetActorProxy)
Q500401TriggerPosui.defaultAlias = "Q500401TriggerPosui"
local Q5004ClientConfig = require("Quest/Client/Q5004ClientConfig")

local this
local subIDs = Q5004ClientConfig.SubIDs
local datas = Q5004ClientConfig.Datas
local npcs = Q5004ClientConfig.Npcs
local points = Q5004ClientConfig.Points

function Q500401TriggerPosui:OnPostDataPrepare()
    print("Q500401TriggerPosui - OnPostDataPrepare")
    this = self
end

function Q500401TriggerPosui:OnPostComponentPrepare()
    print("Q500401TriggerPosui - OnPostComponentPrepare")
    this:AddComponentTrigger(28, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5004)
end

function Q500401TriggerPosui:TriggerIn()
    print("Q500401TriggerPosui - TriggerIn")
    actorMgr:GetActor("5004"):ClearNarratorTask()
    actorMgr:GetActor("5004"):QuestNarratorTask(datas.NarratorWithId_500405, nil)
    this:DestroySelf()
end

function Q500401TriggerPosui:PreTriggerIn()
    print("Q500401TriggerPosui - PreTriggerIn")
end

function Q500401TriggerPosui:LightUpTriggerIn()
    print("Q500401TriggerPosui - LightUpTriggerIn")
end

function Q500401TriggerPosui:TriggerOut()
    print("Q500401TriggerPosui - TriggerOut")
end

return Q500401TriggerPosui
