require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422807KaiChe1 = class("Q7422807KaiChe1", GadgetActorProxy)
Q7422807KaiChe1.defaultAlias = "Q7422807KaiChe1"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422807KaiChe1:OnPostDataPrepare()
    print("Q7422807KaiChe1 - OnPostDataPrepare")
    this = self
end

function Q7422807KaiChe1:OnPostComponentPrepare()
    print("Q7422807KaiChe1 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422807KaiChe1:TriggerIn()
    print("Q7422807KaiChe1 - TriggerIn")
    actorMgr:GetActor("74228"):QuestNarratorTask(datas.NarratorWithId_7422805, nil)
    this:DestroySelf()
end

function Q7422807KaiChe1:PreTriggerIn()
    print("Q7422807KaiChe1 - PreTriggerIn")
end

function Q7422807KaiChe1:LightUpTriggerIn()
    print("Q7422807KaiChe1 - LightUpTriggerIn")
end

function Q7422807KaiChe1:TriggerOut()
    print("Q7422807KaiChe1 - TriggerOut")
end

return Q7422807KaiChe1
