require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13027TriggerDungeonMissingAdd = class("Q13027TriggerDungeonMissingAdd", GadgetActorProxy)
Q13027TriggerDungeonMissingAdd.defaultAlias = "Q13027TriggerDungeonMissingAdd"
local Q13027ClientConfig = require("Quest/Client/Q13027ClientConfig")

local this
local subIDs = Q13027ClientConfig.SubIDs
local npcs = Q13027ClientConfig.Npcs
local points = Q13027ClientConfig.Points
local datas = Q13027ClientConfig.Datas

function Q13027TriggerDungeonMissingAdd:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13027TriggerDungeonMissingAdd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13027TriggerDungeonMissingAdd:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302722)
    this:DestroySelf()
end

function Q13027TriggerDungeonMissingAdd:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13027TriggerDungeonMissingAdd:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13027TriggerDungeonMissingAdd:TriggerOut()
    print("TriggerOut")
end

return Q13027TriggerDungeonMissingAdd
