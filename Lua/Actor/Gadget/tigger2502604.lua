require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger2502604 = class("tigger2502604", GadgetActorProxy)
tigger2502604.defaultAlias = "tigger2502604"
local Q25026ClientConfig = require("Quest/Client/Q25026ClientConfig")

local this
local subIDs = Q25026ClientConfig.SubIDs
local datas = Q25026ClientConfig.Datas
local npcs = Q25026ClientConfig.Npcs
local points = Q25026ClientConfig.Points

function tigger2502604:OnPostDataPrepare()
    print("tigger2502604 - OnPostDataPrepare")
    this = self
end

function tigger2502604:OnPostComponentPrepare()
    print("tigger2502604 - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25026)
end

function tigger2502604:TriggerIn()
    print("tigger2502604 - TriggerIn")
    actorMgr:GetActor("25026"):QuestNarratorTask(datas.NarratorWithId2502604, nil)
    this:DestroySelf()
end

function tigger2502604:PreTriggerIn()
    print("tigger2502604 - PreTriggerIn")
end

function tigger2502604:LightUpTriggerIn()
    print("tigger2502604 - LightUpTriggerIn")
end

function tigger2502604:TriggerOut()
    print("tigger2502604 - TriggerOut")
end

return tigger2502604
