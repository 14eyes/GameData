require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700502DungeonEntry = class("Q700502DungeonEntry", GadgetActorProxy)
Q700502DungeonEntry.defaultAlias = "Q700502DungeonEntry"
local Q7005ClientConfig = require("Quest/Client/Q7005ClientConfig")

local this
local subIDs = Q7005ClientConfig.SubIDs
local datas = Q7005ClientConfig.Datas
local npcs = Q7005ClientConfig.Npcs
local points = Q7005ClientConfig.Points

function Q700502DungeonEntry:OnPostDataPrepare()
    print("Q700502DungeonEntry - OnPostDataPrepare")
    this = self
end

function Q700502DungeonEntry:OnPostComponentPrepare()
    print("Q700502DungeonEntry - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7005)
end

function Q700502DungeonEntry:TriggerIn()
    print("Q700502DungeonEntry - TriggerIn")
    actorMgr:GetActor("7005"):PlayerEnterDungeonWithData(1, 1321, 700503, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q700502DungeonEntry:PreTriggerIn()
    print("Q700502DungeonEntry - PreTriggerIn")
end

function Q700502DungeonEntry:LightUpTriggerIn()
    print("Q700502DungeonEntry - LightUpTriggerIn")
end

function Q700502DungeonEntry:TriggerOut()
    print("Q700502DungeonEntry - TriggerOut")
end

return Q700502DungeonEntry
