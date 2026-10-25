require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5034HuguangkaicheA = class("Q5034HuguangkaicheA", GadgetActorProxy)
Q5034HuguangkaicheA.defaultAlias = "Q5034HuguangkaicheA"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q5034HuguangkaicheA:OnPostDataPrepare()
    print("Q5034HuguangkaicheA - OnPostDataPrepare")
    this = self
end

function Q5034HuguangkaicheA:OnPostComponentPrepare()
    print("Q5034HuguangkaicheA - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q5034HuguangkaicheA:TriggerIn()
    print("Q5034HuguangkaicheA - TriggerIn")
    actorMgr:GetActor("5034"):QuestNarratorTask(datas.huguangkaicheA, nil)
    this:DestroySelf()
end

function Q5034HuguangkaicheA:PreTriggerIn()
    print("Q5034HuguangkaicheA - PreTriggerIn")
end

function Q5034HuguangkaicheA:LightUpTriggerIn()
    print("Q5034HuguangkaicheA - LightUpTriggerIn")
end

function Q5034HuguangkaicheA:TriggerOut()
    print("Q5034HuguangkaicheA - TriggerOut")
end

return Q5034HuguangkaicheA
