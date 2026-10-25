require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger7114401 = class("tigger7114401", GadgetActorProxy)
tigger7114401.defaultAlias = "tigger7114401"
local Q71144ClientConfig = require("Quest/Client/Q71144ClientConfig")

local this
local subIDs = Q71144ClientConfig.SubIDs
local datas = Q71144ClientConfig.Datas
local npcs = Q71144ClientConfig.Npcs
local points = Q71144ClientConfig.Points

function tigger7114401:OnPostDataPrepare()
    print("tigger7114401 - OnPostDataPrepare")
    this = self
end

function tigger7114401:OnPostComponentPrepare()
    print("tigger7114401 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71144)
end

function tigger7114401:TriggerIn()
    print("tigger7114401 - TriggerIn")
    actorMgr:GetActor("71144"):QuestNarratorTask(datas.NarratorWithId7114402, nil)
    actorUtils.FinishQuestID(false, 7114402)
    this:DestroySelf()
end

function tigger7114401:PreTriggerIn()
    print("tigger7114401 - PreTriggerIn")
end

function tigger7114401:LightUpTriggerIn()
    print("tigger7114401 - LightUpTriggerIn")
end

function tigger7114401:TriggerOut()
    print("tigger7114401 - TriggerOut")
end

return tigger7114401
