require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501102NarratorTrigger2 = class("Q501102NarratorTrigger2", GadgetActorProxy)
Q501102NarratorTrigger2.defaultAlias = "Q501102NarratorTrigger2"
local Q5011ClientConfig = require("Quest/Client/Q5011ClientConfig")

local this
local subIDs = Q5011ClientConfig.SubIDs
local datas = Q5011ClientConfig.Datas
local npcs = Q5011ClientConfig.Npcs
local points = Q5011ClientConfig.Points

function Q501102NarratorTrigger2:OnPostDataPrepare()
    print("Q501102NarratorTrigger2 - OnPostDataPrepare")
    this = self
end

function Q501102NarratorTrigger2:OnPostComponentPrepare()
    print("Q501102NarratorTrigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5011)
end

function Q501102NarratorTrigger2:TriggerIn()
    print("Q501102NarratorTrigger2 - TriggerIn")
    actorMgr:GetActor("5011"):QuestNarratorTask(datas.NarratorWithId_501102, nil)
    actorUtils.FinishQuestID(false, 501132)
    this:DestroySelf()
end

function Q501102NarratorTrigger2:PreTriggerIn()
    print("Q501102NarratorTrigger2 - PreTriggerIn")
end

function Q501102NarratorTrigger2:LightUpTriggerIn()
    print("Q501102NarratorTrigger2 - LightUpTriggerIn")
end

function Q501102NarratorTrigger2:TriggerOut()
    print("Q501102NarratorTrigger2 - TriggerOut")
end

return Q501102NarratorTrigger2
