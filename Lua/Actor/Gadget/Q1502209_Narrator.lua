require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502209_Narrator = class("Q1502209_Narrator", GadgetActorProxy)
Q1502209_Narrator.defaultAlias = "Q1502209_Narrator"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502209_Narrator:OnPostDataPrepare()
    print("Q1502209_Narrator - OnPostDataPrepare")
    this = self
end

function Q1502209_Narrator:OnPostComponentPrepare()
    print("Q1502209_Narrator - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 60, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502209_Narrator:TriggerIn()
    print("Q1502209_Narrator - TriggerIn")
    actorMgr:GetActor("15022"):QuestNarratorTask(datas.NarratorWithId_1502202, nil)
    this:DestroySelf()
end

function Q1502209_Narrator:PreTriggerIn()
    print("Q1502209_Narrator - PreTriggerIn")
end

function Q1502209_Narrator:LightUpTriggerIn()
    print("Q1502209_Narrator - LightUpTriggerIn")
end

function Q1502209_Narrator:TriggerOut()
    print("Q1502209_Narrator - TriggerOut")
end

return Q1502209_Narrator
