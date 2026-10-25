require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20700 = class("Quest20700", QuestActorProxy)
Quest20700.defaultAlias = "Quest20700"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20700:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20700:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2070001"] = self.OnSubStart2070001,
        ["2070002"] = self.OnSubStart2070002,
        ["2070005"] = self.OnSubStart2070005,
        ["2070004"] = self.OnSubStart2070004,
        ["2070006"] = self.OnSubStart2070006,
        ["2070007"] = self.OnSubStart2070007,
        ["2070008"] = self.OnSubStart2070008,
        ["2070009"] = self.OnSubStart2070009,
        ["2070010"] = self.OnSubStart2070010,
        ["2070011"] = self.OnSubStart2070011,
        ["2070012"] = self.OnSubStart2070012,
        ["2070013"] = self.OnSubStart2070013,
        ["2070014"] = self.OnSubStart2070014,
        ["2070015"] = self.OnSubStart2070015,
        ["2070016"] = self.OnSubStart2070016,
        ["2070017"] = self.OnSubStart2070017,
        ["2070018"] = self.OnSubStart2070018,
        ["2070019"] = self.OnSubStart2070019,
        ["2070020"] = self.OnSubStart2070020,
        ["2070021"] = self.OnSubStart2070021,
        ["2070022"] = self.OnSubStart2070022,
        ["2070023"] = self.OnSubStart2070023,
        ["2070024"] = self.OnSubStart2070024,
        ["2070025"] = self.OnSubStart2070025,
        ["2070026"] = self.OnSubStart2070026,
        ["2070027"] = self.OnSubStart2070027
    }
end

function Quest20700:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2070001"] = self.OnSubFinish2070001,
        ["2070002"] = self.OnSubFinish2070002,
        ["2070005"] = self.OnSubFinish2070005,
        ["2070004"] = self.OnSubFinish2070004,
        ["2070006"] = self.OnSubFinish2070006,
        ["2070007"] = self.OnSubFinish2070007,
        ["2070008"] = self.OnSubFinish2070008,
        ["2070009"] = self.OnSubFinish2070009,
        ["2070010"] = self.OnSubFinish2070010,
        ["2070011"] = self.OnSubFinish2070011,
        ["2070012"] = self.OnSubFinish2070012,
        ["2070013"] = self.OnSubFinish2070013,
        ["2070014"] = self.OnSubFinish2070014,
        ["2070015"] = self.OnSubFinish2070015,
        ["2070016"] = self.OnSubFinish2070016,
        ["2070017"] = self.OnSubFinish2070017,
        ["2070018"] = self.OnSubFinish2070018,
        ["2070019"] = self.OnSubFinish2070019,
        ["2070020"] = self.OnSubFinish2070020,
        ["2070021"] = self.OnSubFinish2070021,
        ["2070022"] = self.OnSubFinish2070022,
        ["2070023"] = self.OnSubFinish2070023,
        ["2070024"] = self.OnSubFinish2070024,
        ["2070025"] = self.OnSubFinish2070025,
        ["2070026"] = self.OnSubFinish2070026,
        ["2070027"] = self.OnSubFinish2070027
    }
end

function Quest20700:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2070001"] = self.OnSubFailed2070001,
        ["2070002"] = self.OnSubFailed2070002,
        ["2070005"] = self.OnSubFailed2070005,
        ["2070004"] = self.OnSubFailed2070004,
        ["2070006"] = self.OnSubFailed2070006,
        ["2070007"] = self.OnSubFailed2070007,
        ["2070008"] = self.OnSubFailed2070008,
        ["2070009"] = self.OnSubFailed2070009,
        ["2070010"] = self.OnSubFailed2070010,
        ["2070011"] = self.OnSubFailed2070011,
        ["2070012"] = self.OnSubFailed2070012,
        ["2070013"] = self.OnSubFailed2070013,
        ["2070014"] = self.OnSubFailed2070014,
        ["2070015"] = self.OnSubFailed2070015,
        ["2070016"] = self.OnSubFailed2070016,
        ["2070017"] = self.OnSubFailed2070017,
        ["2070018"] = self.OnSubFailed2070018,
        ["2070019"] = self.OnSubFailed2070019,
        ["2070020"] = self.OnSubFailed2070020,
        ["2070021"] = self.OnSubFailed2070021,
        ["2070022"] = self.OnSubFailed2070022,
        ["2070023"] = self.OnSubFailed2070023,
        ["2070024"] = self.OnSubFailed2070024,
        ["2070025"] = self.OnSubFailed2070025,
        ["2070026"] = self.OnSubFailed2070026,
        ["2070027"] = self.OnSubFailed2070027
    }
end

function Quest20700:Start()
    print("Start")
end

function Quest20700:OnDestroy()
    print("OnDestroy")
end

function Quest20700:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20700:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20700:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1654Data.alias, 3)
end

function Quest20700:Function1()
    print("Function1")
    self:DestroyQuestNpcActor(npcs.Npc1654Data.alias, 3)
end

function Quest20700:OnSubStart2070001(arg1)
    print("OnSubStart2070001")
    self:CreateQuestNpc(arg1, npcs.Npc1654Data.id, 0)
end

function Quest20700:OnSubFinish2070001(arg1)
    print("OnSubFinish2070001")
end

function Quest20700:OnSubFailed2070001(arg1)
    print("OnSubFailed2070001")
end

function Quest20700:OnSubStart2070002(arg1)
    print("OnSubStart2070002")
end

function Quest20700:OnSubFinish2070002(arg1)
    print("OnSubFinish2070002")
end

function Quest20700:OnSubFailed2070002(arg1)
    print("OnSubFailed2070002")
end

function Quest20700:OnSubStart2070005(arg1)
    print("OnSubStart2070005")
end

function Quest20700:OnSubFinish2070005(arg1)
    print("OnSubFinish2070005")
end

function Quest20700:OnSubFailed2070005(arg1)
    print("OnSubFailed2070005")
end

function Quest20700:OnSubStart2070004(arg1)
    print("OnSubStart2070004")
end

function Quest20700:OnSubFinish2070004(arg1)
    print("OnSubFinish2070004")
end

function Quest20700:OnSubFailed2070004(arg1)
    print("OnSubFailed2070004")
end

function Quest20700:OnSubStart2070006(arg1)
    print("OnSubStart2070006")
end

function Quest20700:OnSubFinish2070006(arg1)
    print("OnSubFinish2070006")
end

function Quest20700:OnSubFailed2070006(arg1)
    print("OnSubFailed2070006")
end

function Quest20700:OnSubStart2070007(arg1)
    print("OnSubStart2070007")
end

function Quest20700:OnSubFinish2070007(arg1)
    print("OnSubFinish2070007")
end

function Quest20700:OnSubFailed2070007(arg1)
    print("OnSubFailed2070007")
end

function Quest20700:OnSubStart2070008(arg1)
    print("OnSubStart2070008")
end

function Quest20700:OnSubFinish2070008(arg1)
    print("OnSubFinish2070008")
end

function Quest20700:OnSubFailed2070008(arg1)
    print("OnSubFailed2070008")
end

function Quest20700:OnSubStart2070009(arg1)
    print("OnSubStart2070009")
end

function Quest20700:OnSubFinish2070009(arg1)
    print("OnSubFinish2070009")
end

function Quest20700:OnSubFailed2070009(arg1)
    print("OnSubFailed2070009")
end

function Quest20700:OnSubStart2070010(arg1)
    print("OnSubStart2070010")
end

function Quest20700:OnSubFinish2070010(arg1)
    print("OnSubFinish2070010")
end

function Quest20700:OnSubFailed2070010(arg1)
    print("OnSubFailed2070010")
end

function Quest20700:OnSubStart2070011(arg1)
    print("OnSubStart2070011")
end

function Quest20700:OnSubFinish2070011(arg1)
    print("OnSubFinish2070011")
end

function Quest20700:OnSubFailed2070011(arg1)
    print("OnSubFailed2070011")
end

function Quest20700:OnSubStart2070012(arg1)
    print("OnSubStart2070012")
end

function Quest20700:OnSubFinish2070012(arg1)
    print("OnSubFinish2070012")
end

function Quest20700:OnSubFailed2070012(arg1)
    print("OnSubFailed2070012")
end

function Quest20700:OnSubStart2070013(arg1)
    print("OnSubStart2070013")
end

function Quest20700:OnSubFinish2070013(arg1)
    print("OnSubFinish2070013")
end

function Quest20700:OnSubFailed2070013(arg1)
    print("OnSubFailed2070013")
end

function Quest20700:OnSubStart2070014(arg1)
    print("OnSubStart2070014")
end

function Quest20700:OnSubFinish2070014(arg1)
    print("OnSubFinish2070014")
end

function Quest20700:OnSubFailed2070014(arg1)
    print("OnSubFailed2070014")
end

function Quest20700:OnSubStart2070015(arg1)
    print("OnSubStart2070015")
end

function Quest20700:OnSubFinish2070015(arg1)
    print("OnSubFinish2070015")
end

function Quest20700:OnSubFailed2070015(arg1)
    print("OnSubFailed2070015")
end

function Quest20700:OnSubStart2070016(arg1)
    print("OnSubStart2070016")
end

function Quest20700:OnSubFinish2070016(arg1)
    print("OnSubFinish2070016")
end

function Quest20700:OnSubFailed2070016(arg1)
    print("OnSubFailed2070016")
end

function Quest20700:OnSubStart2070017(arg1)
    print("OnSubStart2070017")
end

function Quest20700:OnSubFinish2070017(arg1)
    print("OnSubFinish2070017")
    self:ShowBlackScreen(0.2, 1, 0.5, self.Function1, nil, nil, "")
end

function Quest20700:OnSubFailed2070017(arg1)
    print("OnSubFailed2070017")
end

function Quest20700:OnSubStart2070018(arg1)
    print("OnSubStart2070018")
end

function Quest20700:OnSubFinish2070018(arg1)
    print("OnSubFinish2070018")
    self:ShowBlackScreen(0.2, 1, 0.5, self.Function1, nil, nil, "")
end

function Quest20700:OnSubFailed2070018(arg1)
    print("OnSubFailed2070018")
end

function Quest20700:OnSubStart2070019(arg1)
    print("OnSubStart2070019")
end

function Quest20700:OnSubFinish2070019(arg1)
    print("OnSubFinish2070019")
    self:ShowBlackScreen(0.2, 1, 0.5, self.Function1, nil, nil, "")
end

function Quest20700:OnSubFailed2070019(arg1)
    print("OnSubFailed2070019")
end

function Quest20700:OnSubStart2070020(arg1)
    print("OnSubStart2070020")
end

function Quest20700:OnSubFinish2070020(arg1)
    print("OnSubFinish2070020")
end

function Quest20700:OnSubFailed2070020(arg1)
    print("OnSubFailed2070020")
end

function Quest20700:OnSubStart2070021(arg1)
    print("OnSubStart2070021")
end

function Quest20700:OnSubFinish2070021(arg1)
    print("OnSubFinish2070021")
end

function Quest20700:OnSubFailed2070021(arg1)
    print("OnSubFailed2070021")
end

function Quest20700:OnSubStart2070022(arg1)
    print("OnSubStart2070022")
end

function Quest20700:OnSubFinish2070022(arg1)
    print("OnSubFinish2070022")
end

function Quest20700:OnSubFailed2070022(arg1)
    print("OnSubFailed2070022")
end

function Quest20700:OnSubStart2070023(arg1)
    print("OnSubStart2070023")
end

function Quest20700:OnSubFinish2070023(arg1)
    print("OnSubFinish2070023")
end

function Quest20700:OnSubFailed2070023(arg1)
    print("OnSubFailed2070023")
end

function Quest20700:OnSubStart2070024(arg1)
    print("OnSubStart2070024")
end

function Quest20700:OnSubFinish2070024(arg1)
    print("OnSubFinish2070024")
end

function Quest20700:OnSubFailed2070024(arg1)
    print("OnSubFailed2070024")
end

function Quest20700:OnSubStart2070025(arg1)
    print("OnSubStart2070025")
end

function Quest20700:OnSubFinish2070025(arg1)
    print("OnSubFinish2070025")
end

function Quest20700:OnSubFailed2070025(arg1)
    print("OnSubFailed2070025")
end

function Quest20700:OnSubStart2070026(arg1)
    print("OnSubStart2070026")
end

function Quest20700:OnSubFinish2070026(arg1)
    print("OnSubFinish2070026")
end

function Quest20700:OnSubFailed2070026(arg1)
    print("OnSubFailed2070026")
end

function Quest20700:OnSubStart2070027(arg1)
    print("OnSubStart2070027")
end

function Quest20700:OnSubFinish2070027(arg1)
    print("OnSubFinish2070027")
end

function Quest20700:OnSubFailed2070027(arg1)
    print("OnSubFailed2070027")
end

return Quest20700
