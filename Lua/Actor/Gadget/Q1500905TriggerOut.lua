require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500905TriggerOut = class("Q1500905TriggerOut", GadgetActorProxy)
Q1500905TriggerOut.defaultAlias = "Q1500905TriggerOut"
local Q15009ClientConfig = require("Quest/Client/Q15009ClientConfig")

local this
local subIDs = Q15009ClientConfig.SubIDs
local datas = Q15009ClientConfig.Datas
local npcs = Q15009ClientConfig.Npcs
local points = Q15009ClientConfig.Points

function Q1500905TriggerOut:OnPostDataPrepare()
    print("Q1500905TriggerOut - OnPostDataPrepare")
    this = self
end

function Q1500905TriggerOut:OnPostComponentPrepare()
    print("Q1500905TriggerOut - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(500, 130, 80, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15009)
end

function Q1500905TriggerOut:TriggerIn()
    print("Q1500905TriggerOut - TriggerIn")
end

function Q1500905TriggerOut:PreTriggerIn()
    print("Q1500905TriggerOut - PreTriggerIn")
end

function Q1500905TriggerOut:LightUpTriggerIn()
    print("Q1500905TriggerOut - LightUpTriggerIn")
end

function Q1500905TriggerOut:TriggerOut()
    print("Q1500905TriggerOut - TriggerOut")
    actorUtils.FinishQuestID(true, 1500905)
end

return Q1500905TriggerOut
