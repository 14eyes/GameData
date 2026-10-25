require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601508EnterDungeon = class("Q601508EnterDungeon", GadgetActorProxy)
Q601508EnterDungeon.defaultAlias = "Q601508EnterDungeon"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601508EnterDungeon:OnPostDataPrepare()
    print("Q601508EnterDungeon - OnPostDataPrepare")
    this = self
end

function Q601508EnterDungeon:OnPostComponentPrepare()
    print("Q601508EnterDungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(300, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601508EnterDungeon:TriggerIn()
    print("Q601508EnterDungeon - TriggerIn")
    actorMgr:GetActor("6015"):PlayerEnterDungeonWithData(1, 1292, 601508, 1, datas.EnterDungeonWithSaving, nil, nil)
    this:DestroySelf()
end

function Q601508EnterDungeon:PreTriggerIn()
    print("Q601508EnterDungeon - PreTriggerIn")
end

function Q601508EnterDungeon:LightUpTriggerIn()
    print("Q601508EnterDungeon - LightUpTriggerIn")
end

function Q601508EnterDungeon:TriggerOut()
    print("Q601508EnterDungeon - TriggerOut")
end

return Q601508EnterDungeon
