require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503408Dungeon = class("Q503408Dungeon", GadgetActorProxy)
Q503408Dungeon.defaultAlias = "Q503408Dungeon"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q503408Dungeon:OnPostDataPrepare()
    print("Q503408Dungeon - OnPostDataPrepare")
    this = self
end

function Q503408Dungeon:OnPostComponentPrepare()
    print("Q503408Dungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q503408Dungeon:TriggerIn()
    print("Q503408Dungeon - TriggerIn")
    actorMgr:GetActor("5034"):PlayerEnterDungeonWithData(1446, 1229, 5034, 1, datas.PlayerEnterDungeonData_WithQuestConfig, nil, nil)
    this:DestroySelf()
end

function Q503408Dungeon:PreTriggerIn()
    print("Q503408Dungeon - PreTriggerIn")
end

function Q503408Dungeon:LightUpTriggerIn()
    print("Q503408Dungeon - LightUpTriggerIn")
end

function Q503408Dungeon:TriggerOut()
    print("Q503408Dungeon - TriggerOut")
end

return Q503408Dungeon
