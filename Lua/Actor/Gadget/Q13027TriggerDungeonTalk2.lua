require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13027TriggerDungeonTalk2 = class("Q13027TriggerDungeonTalk2", GadgetActorProxy)
Q13027TriggerDungeonTalk2.defaultAlias = "Q13027TriggerDungeonTalk2"
local Q13027ClientConfig = require("Quest/Client/Q13027ClientConfig")

local this
local subIDs = Q13027ClientConfig.SubIDs
local npcs = Q13027ClientConfig.Npcs
local points = Q13027ClientConfig.Points
local datas = Q13027ClientConfig.Datas

function Q13027TriggerDungeonTalk2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13027TriggerDungeonTalk2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13027TriggerDungeonTalk2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302711)
    this:DestroySelf()
end

function Q13027TriggerDungeonTalk2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13027TriggerDungeonTalk2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13027TriggerDungeonTalk2:TriggerOut()
    print("TriggerOut")
end

return Q13027TriggerDungeonTalk2
