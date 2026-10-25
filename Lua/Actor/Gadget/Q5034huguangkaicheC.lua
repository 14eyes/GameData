require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5034huguangkaicheC = class("Q5034huguangkaicheC", GadgetActorProxy)
Q5034huguangkaicheC.defaultAlias = "Q5034huguangkaicheC"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q5034huguangkaicheC:OnPostDataPrepare()
    print("Q5034huguangkaicheC - OnPostDataPrepare")
    this = self
end

function Q5034huguangkaicheC:OnPostComponentPrepare()
    print("Q5034huguangkaicheC - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q5034huguangkaicheC:TriggerIn()
    print("Q5034huguangkaicheC - TriggerIn")
    actorMgr:GetActor("5034"):QuestNarratorTask(datas.HuguangkaicheC, nil)
    this:DestroySelf()
end

function Q5034huguangkaicheC:PreTriggerIn()
    print("Q5034huguangkaicheC - PreTriggerIn")
end

function Q5034huguangkaicheC:LightUpTriggerIn()
    print("Q5034huguangkaicheC - LightUpTriggerIn")
end

function Q5034huguangkaicheC:TriggerOut()
    print("Q5034huguangkaicheC - TriggerOut")
end

return Q5034huguangkaicheC
