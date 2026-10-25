require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500203_Narrator = class("Q1500203_Narrator", GadgetActorProxy)
Q1500203_Narrator.defaultAlias = "Q1500203_Narrator"
local Q15002ClientConfig = require("Quest/Client/Q15002ClientConfig")

local this
local subIDs = Q15002ClientConfig.SubIDs
local datas = Q15002ClientConfig.Datas
local npcs = Q15002ClientConfig.Npcs

function Q1500203_Narrator:OnPostDataPrepare()
    print("Q1500203_Narrator - OnPostDataPrepare")
    this = self
end

function Q1500203_Narrator:OnPostComponentPrepare()
    print("Q1500203_Narrator - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15002)
end

function Q1500203_Narrator:TriggerIn()
    print("Q1500203_Narrator - TriggerIn")
    this:QuestNarratorTask(datas.NarratorWithId_1500299, nil)
    this:DestroySelf()
end

function Q1500203_Narrator:PreTriggerIn()
    print("Q1500203_Narrator - PreTriggerIn")
end

function Q1500203_Narrator:LightUpTriggerIn()
    print("Q1500203_Narrator - LightUpTriggerIn")
end

function Q1500203_Narrator:TriggerOut()
    print("Q1500203_Narrator - TriggerOut")
end

return Q1500203_Narrator
