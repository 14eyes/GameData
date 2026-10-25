require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503409Dungeon = class("Q503409Dungeon", GadgetActorProxy)
Q503409Dungeon.defaultAlias = "Q503409Dungeon"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q503409Dungeon:OnPostDataPrepare()
    print("Q503409Dungeon - OnPostDataPrepare")
    this = self
end

function Q503409Dungeon:OnPostComponentPrepare()
    print("Q503409Dungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q503409Dungeon:TriggerIn()
    print("Q503409Dungeon - TriggerIn")
    actorMgr:GetActor("5034"):PlayerEnterDungeonWithData(1446, 1229, 503409, 1, datas.PlayerEnterDungeonData_NoQuestConfig, nil, nil)
    this:DestroySelf()
end

function Q503409Dungeon:PreTriggerIn()
    print("Q503409Dungeon - PreTriggerIn")
end

function Q503409Dungeon:LightUpTriggerIn()
    print("Q503409Dungeon - LightUpTriggerIn")
end

function Q503409Dungeon:TriggerOut()
    print("Q503409Dungeon - TriggerOut")
end

return Q503409Dungeon
