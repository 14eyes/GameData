require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71006 = class("Quest71006", QuestActorProxy)
Quest71006.defaultAlias = "Quest71006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7100613"] = self.OnSubStart7100613,
        ["7100614"] = self.OnSubStart7100614,
        ["7100615"] = self.OnSubStart7100615,
        ["7100616"] = self.OnSubStart7100616,
        ["7100608"] = self.OnSubStart7100608,
        ["7100601"] = self.OnSubStart7100601,
        ["7100602"] = self.OnSubStart7100602,
        ["7100603"] = self.OnSubStart7100603,
        ["7100604"] = self.OnSubStart7100604,
        ["7100605"] = self.OnSubStart7100605,
        ["7100606"] = self.OnSubStart7100606,
        ["7100607"] = self.OnSubStart7100607,
        ["7100620"] = self.OnSubStart7100620,
        ["7100609"] = self.OnSubStart7100609,
        ["7100610"] = self.OnSubStart7100610,
        ["7100617"] = self.OnSubStart7100617,
        ["7100618"] = self.OnSubStart7100618,
        ["7100619"] = self.OnSubStart7100619,
        ["7100611"] = self.OnSubStart7100611,
        ["7100612"] = self.OnSubStart7100612
    }
end

function Quest71006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7100613"] = self.OnSubFinish7100613,
        ["7100614"] = self.OnSubFinish7100614,
        ["7100615"] = self.OnSubFinish7100615,
        ["7100616"] = self.OnSubFinish7100616,
        ["7100608"] = self.OnSubFinish7100608,
        ["7100601"] = self.OnSubFinish7100601,
        ["7100602"] = self.OnSubFinish7100602,
        ["7100603"] = self.OnSubFinish7100603,
        ["7100604"] = self.OnSubFinish7100604,
        ["7100605"] = self.OnSubFinish7100605,
        ["7100606"] = self.OnSubFinish7100606,
        ["7100607"] = self.OnSubFinish7100607,
        ["7100620"] = self.OnSubFinish7100620,
        ["7100609"] = self.OnSubFinish7100609,
        ["7100610"] = self.OnSubFinish7100610,
        ["7100617"] = self.OnSubFinish7100617,
        ["7100618"] = self.OnSubFinish7100618,
        ["7100619"] = self.OnSubFinish7100619,
        ["7100611"] = self.OnSubFinish7100611,
        ["7100612"] = self.OnSubFinish7100612
    }
end

function Quest71006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7100613"] = self.OnSubFailed7100613,
        ["7100614"] = self.OnSubFailed7100614,
        ["7100615"] = self.OnSubFailed7100615,
        ["7100616"] = self.OnSubFailed7100616,
        ["7100608"] = self.OnSubFailed7100608,
        ["7100601"] = self.OnSubFailed7100601,
        ["7100602"] = self.OnSubFailed7100602,
        ["7100603"] = self.OnSubFailed7100603,
        ["7100604"] = self.OnSubFailed7100604,
        ["7100605"] = self.OnSubFailed7100605,
        ["7100606"] = self.OnSubFailed7100606,
        ["7100607"] = self.OnSubFailed7100607,
        ["7100620"] = self.OnSubFailed7100620,
        ["7100609"] = self.OnSubFailed7100609,
        ["7100610"] = self.OnSubFailed7100610,
        ["7100617"] = self.OnSubFailed7100617,
        ["7100618"] = self.OnSubFailed7100618,
        ["7100619"] = self.OnSubFailed7100619,
        ["7100611"] = self.OnSubFailed7100611,
        ["7100612"] = self.OnSubFailed7100612
    }
end

function Quest71006:Start()
    print("Start")
end

function Quest71006:OnDestroy()
    print("OnDestroy")
end

function Quest71006:OnMainFinished(arg1)
    actorUtils.ForceRefreshDaily("Npc2409")
end

function Quest71006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71006:ComplexDialog()
    print("ComplexDialog")
    self:RequestInteraction("Npc2409")
end

function Quest71006:NPCfreestyle()
    print("NPCfreestyle")
    self:GetQuestNpcActor(npcs.Npc2409Data.alias):DoFreeStyle(1040, true)
end

function Quest71006:Delay()
    print("Delay")
    self:CallDelay(0.9, self.NPCfreestyle)
end

function Quest71006:OnSubStart7100613(arg1)
    print("OnSubStart7100613")
end

function Quest71006:OnSubFinish7100613(arg1)
    print("OnSubFinish7100613")
end

function Quest71006:OnSubFailed7100613(arg1)
    print("OnSubFailed7100613")
end

function Quest71006:OnSubStart7100614(arg1)
    print("OnSubStart7100614")
end

function Quest71006:OnSubFinish7100614(arg1)
    print("OnSubFinish7100614")
end

function Quest71006:OnSubFailed7100614(arg1)
    print("OnSubFailed7100614")
end

function Quest71006:OnSubStart7100615(arg1)
    print("OnSubStart7100615")
end

function Quest71006:OnSubFinish7100615(arg1)
    print("OnSubFinish7100615")
end

function Quest71006:OnSubFailed7100615(arg1)
    print("OnSubFailed7100615")
end

function Quest71006:OnSubStart7100616(arg1)
    print("OnSubStart7100616")
end

function Quest71006:OnSubFinish7100616(arg1)
    print("OnSubFinish7100616")
end

function Quest71006:OnSubFailed7100616(arg1)
    print("OnSubFailed7100616")
end

function Quest71006:OnSubStart7100608(arg1)
    print("OnSubStart7100608")
end

function Quest71006:OnSubFinish7100608(arg1)
    print("OnSubFinish7100608")
end

function Quest71006:OnSubFailed7100608(arg1)
    print("OnSubFailed7100608")
end

function Quest71006:OnSubStart7100601(arg1)
    print("OnSubStart7100601")
    self:CreateQuestNpc(arg1, npcs.Npc2409Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc2409Data.alias):DoFreeStyle(1190, true)
end

function Quest71006:OnSubFinish7100601(arg1)
    print("OnSubFinish7100601")
end

function Quest71006:OnSubFailed7100601(arg1)
    print("OnSubFailed7100601")
end

function Quest71006:OnSubStart7100602(arg1)
    print("OnSubStart7100602")
end

function Quest71006:OnSubFinish7100602(arg1)
    print("OnSubFinish7100602")
end

function Quest71006:OnSubFailed7100602(arg1)
    print("OnSubFailed7100602")
end

function Quest71006:OnSubStart7100603(arg1)
    print("OnSubStart7100603")
end

function Quest71006:OnSubFinish7100603(arg1)
    print("OnSubFinish7100603")
end

function Quest71006:OnSubFailed7100603(arg1)
    print("OnSubFailed7100603")
end

function Quest71006:OnSubStart7100604(arg1)
    print("OnSubStart7100604")
end

function Quest71006:OnSubFinish7100604(arg1)
    print("OnSubFinish7100604")
end

function Quest71006:OnSubFailed7100604(arg1)
    print("OnSubFailed7100604")
end

function Quest71006:OnSubStart7100605(arg1)
    print("OnSubStart7100605")
end

function Quest71006:OnSubFinish7100605(arg1)
    print("OnSubFinish7100605")
end

function Quest71006:OnSubFailed7100605(arg1)
    print("OnSubFailed7100605")
end

function Quest71006:OnSubStart7100606(arg1)
    print("OnSubStart7100606")
end

function Quest71006:OnSubFinish7100606(arg1)
    print("OnSubFinish7100606")
end

function Quest71006:OnSubFailed7100606(arg1)
    print("OnSubFailed7100606")
end

function Quest71006:OnSubStart7100607(arg1)
    print("OnSubStart7100607")
end

function Quest71006:OnSubFinish7100607(arg1)
    print("OnSubFinish7100607")
end

function Quest71006:OnSubFailed7100607(arg1)
    print("OnSubFailed7100607")
end

function Quest71006:OnSubStart7100620(arg1)
    print("OnSubStart7100620")
end

function Quest71006:OnSubFinish7100620(arg1)
    print("OnSubFinish7100620")
end

function Quest71006:OnSubFailed7100620(arg1)
    print("OnSubFailed7100620")
end

function Quest71006:OnSubStart7100609(arg1)
    print("OnSubStart7100609")
    local subQuestState = self:GetSubQuestState(7100613)
    local v = self:GetSubQuestState(7100614)
    if subQuestState == 3 and v == 3 then
        self:SetQuestVar(7100613, 1, 2)
    end
end

function Quest71006:OnSubFinish7100609(arg1)
    print("OnSubFinish7100609")
    self:PlayCutsceneIndex("7100601", self.ComplexDialog, self.Delay)
end

function Quest71006:OnSubFailed7100609(arg1)
    print("OnSubFailed7100609")
end

function Quest71006:OnSubStart7100610(arg1)
    print("OnSubStart7100610")
    local subQuestState = self:GetSubQuestState(7100613)
    local v = self:GetSubQuestState(7100614)
    if subQuestState == 3 and v == 3 then
        self:SetQuestVar(7100613, 1, 2)
    end
end

function Quest71006:OnSubFinish7100610(arg1)
    print("OnSubFinish7100610")
    self:PlayCutsceneIndex("7100601", self.ComplexDialog, self.Delay)
end

function Quest71006:OnSubFailed7100610(arg1)
    print("OnSubFailed7100610")
end

function Quest71006:OnSubStart7100617(arg1)
    print("OnSubStart7100617")
end

function Quest71006:OnSubFinish7100617(arg1)
    print("OnSubFinish7100617")
end

function Quest71006:OnSubFailed7100617(arg1)
    print("OnSubFailed7100617")
end

function Quest71006:OnSubStart7100618(arg1)
    print("OnSubStart7100618")
end

function Quest71006:OnSubFinish7100618(arg1)
    print("OnSubFinish7100618")
end

function Quest71006:OnSubFailed7100618(arg1)
    print("OnSubFailed7100618")
end

function Quest71006:OnSubStart7100619(arg1)
    print("OnSubStart7100619")
end

function Quest71006:OnSubFinish7100619(arg1)
    print("OnSubFinish7100619")
    self:DestroyQuestNpcActor(npcs.Npc2409Data.alias, 3)
end

function Quest71006:OnSubFailed7100619(arg1)
    print("OnSubFailed7100619")
end

function Quest71006:OnSubStart7100611(arg1)
    print("OnSubStart7100611")
end

function Quest71006:OnSubFinish7100611(arg1)
    print("OnSubFinish7100611")
    self:PlayCutsceneIndex("7100609", nil, nil, nil, false)
end

function Quest71006:OnSubFailed7100611(arg1)
    print("OnSubFailed7100611")
end

function Quest71006:OnSubStart7100612(arg1)
    print("OnSubStart7100612")
end

function Quest71006:OnSubFinish7100612(arg1)
    print("OnSubFinish7100612")
end

function Quest71006:OnSubFailed7100612(arg1)
    print("OnSubFailed7100612")
end

return Quest71006
