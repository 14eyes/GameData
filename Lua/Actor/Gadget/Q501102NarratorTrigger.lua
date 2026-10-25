require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501102NarratorTrigger = class("Q501102NarratorTrigger", GadgetActorProxy)
Q501102NarratorTrigger.defaultAlias = "Q501102NarratorTrigger"
local Q5011ClientConfig = require("Quest/Client/Q5011ClientConfig")

local this
local subIDs = Q5011ClientConfig.SubIDs
local datas = Q5011ClientConfig.Datas
local npcs = Q5011ClientConfig.Npcs
local points = Q5011ClientConfig.Points

function Q501102NarratorTrigger:OnPostDataPrepare()
    print("Q501102NarratorTrigger - OnPostDataPrepare")
    this = self
end

function Q501102NarratorTrigger:OnPostComponentPrepare()
    print("Q501102NarratorTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5011)
end

function Q501102NarratorTrigger:TriggerIn()
    print("Q501102NarratorTrigger - TriggerIn")
    actorMgr:GetActor("5011"):QuestNarratorTask(datas.NarratorWithId_501101, nil)
    this:DestroySelf()
end

function Q501102NarratorTrigger:PreTriggerIn()
    print("Q501102NarratorTrigger - PreTriggerIn")
end

function Q501102NarratorTrigger:LightUpTriggerIn()
    print("Q501102NarratorTrigger - LightUpTriggerIn")
end

function Q501102NarratorTrigger:TriggerOut()
    print("Q501102NarratorTrigger - TriggerOut")
end

return Q501102NarratorTrigger
