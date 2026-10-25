require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801604EnterDungeon = class("Q801604EnterDungeon", GadgetActorProxy)
Q801604EnterDungeon.defaultAlias = "Q801604EnterDungeon"
local Q8016ClientConfig = require("Quest/Client/Q8016ClientConfig")

local this
local subIDs = Q8016ClientConfig.SubIDs
local datas = Q8016ClientConfig.Datas
local npcs = Q8016ClientConfig.Npcs
local points = Q8016ClientConfig.Points

function Q801604EnterDungeon:OnPostDataPrepare()
    print("Q801604EnterDungeon - OnPostDataPrepare")
    this = self
end

function Q801604EnterDungeon:OnPostComponentPrepare()
    print("Q801604EnterDungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8016)
end

function Q801604EnterDungeon:TriggerIn()
    print("Q801604EnterDungeon - TriggerIn")
end

function Q801604EnterDungeon:PreTriggerIn()
    print("Q801604EnterDungeon - PreTriggerIn")
end

function Q801604EnterDungeon:LightUpTriggerIn()
    print("Q801604EnterDungeon - LightUpTriggerIn")
    actorMgr:GetActor("8016"):PlayerEnterDungeonWithData(1521, 1246, 801604, 0, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q801604EnterDungeon:TriggerOut()
    print("Q801604EnterDungeon - TriggerOut")
end

return Q801604EnterDungeon
