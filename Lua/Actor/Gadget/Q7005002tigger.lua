require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005002tigger = class("Q7005002tigger", GadgetActorProxy)
Q7005002tigger.defaultAlias = "Q7005002tigger"
local Q70050ClientConfig = require("Quest/Client/Q70050ClientConfig")

local this
local subIDs = Q70050ClientConfig.SubIDs
local datas = Q70050ClientConfig.Datas
local npcs = Q70050ClientConfig.Npcs
local points = Q70050ClientConfig.Points

function Q7005002tigger:OnPostDataPrepare()
    print("Q7005002tigger - OnPostDataPrepare")
    this = self
end

function Q7005002tigger:OnPostComponentPrepare()
    print("Q7005002tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70050)
end

function Q7005002tigger:TriggerIn()
    print("Q7005002tigger - TriggerIn")
    actorMgr:GetActor("70050"):QuestNarratorTask(datas.Q7005002NarratorWithId, nil)
    this:DestroySelf()
end

function Q7005002tigger:PreTriggerIn()
    print("Q7005002tigger - PreTriggerIn")
end

function Q7005002tigger:LightUpTriggerIn()
    print("Q7005002tigger - LightUpTriggerIn")
end

function Q7005002tigger:TriggerOut()
    print("Q7005002tigger - TriggerOut")
end

return Q7005002tigger
