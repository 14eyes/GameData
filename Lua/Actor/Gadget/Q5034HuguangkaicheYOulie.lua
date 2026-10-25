require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5034HuguangkaicheYOulie = class("Q5034HuguangkaicheYOulie", GadgetActorProxy)
Q5034HuguangkaicheYOulie.defaultAlias = "Q5034HuguangkaicheYOulie"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q5034HuguangkaicheYOulie:OnPostDataPrepare()
    print("Q5034HuguangkaicheYOulie - OnPostDataPrepare")
    this = self
end

function Q5034HuguangkaicheYOulie:OnPostComponentPrepare()
    print("Q5034HuguangkaicheYOulie - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q5034HuguangkaicheYOulie:TriggerIn()
    print("Q5034HuguangkaicheYOulie - TriggerIn")
    actorMgr:GetActor("5034"):QuestNarratorTask(datas.Q5034KaicheB, nil)
    this:DestroySelf()
end

function Q5034HuguangkaicheYOulie:PreTriggerIn()
    print("Q5034HuguangkaicheYOulie - PreTriggerIn")
end

function Q5034HuguangkaicheYOulie:LightUpTriggerIn()
    print("Q5034HuguangkaicheYOulie - LightUpTriggerIn")
end

function Q5034HuguangkaicheYOulie:TriggerOut()
    print("Q5034HuguangkaicheYOulie - TriggerOut")
end

return Q5034HuguangkaicheYOulie
